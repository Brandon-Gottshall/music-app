import { useEffect, useState } from 'react'
import './App.css'

function App() {
  const [artists, setArtists] = useState([])

  const getArtists = async () => {
    await fetch('https://d3haiuftxr26lv.cloudfront.net:3000/artists').then((response) => {
      if (response.ok) {
        return response.json()
      } 
    }).then((jsonResponse) => {
      console.log('response: ', jsonResponse)
      setArtists(jsonResponse)
    })
    .catch((error) => {
      console.log(error)
    })
  }
  
  useEffect(() => {
    getArtists()
  }, [])

  return (
    <div className="app">
      <h1>Artists</h1>
        <div className="artistContainer">
        {
          artists.map(({name, age}, index) => {
            return <ArtistCard name={name} age={age} key={index} />
          })
        }
        </div>
    </div>
  )
}

export default App
function ArtistCard({ name, age }) {
  return (
    <div className="artistCard">
      <h2>{name}</h2>
      <p>{age}</p>
      <img src="https://via.placeholder.com/150" alt="Artist" />
    </div>
  )
}

